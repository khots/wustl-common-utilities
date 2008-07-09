package edu.wustl.common.hibernate;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Properties;

import org.hibernate.HibernateException;
import org.hibernate.usertype.ParameterizedType;
import org.hibernate.usertype.UserType;

import edu.wustl.common.util.CompoundEnum;

/**
 * A <tt>UserType</tt> that can be used to persist <tt>enums</tt> and
 * {@link CompoundEnum}s.<br>
 * <b>Mapping example:</b> <br>
 * Suppose a field <tt>foo</tt> is of type <tt>com.foobar.FooCompoundEnum</tt>;
 * <tt>FooCompoundEnum extends CompoundEnum</tt>, and obeys the
 * {@link CompoundEnum} contract.<br>
 * This field <tt>foo</tt> can be mapped as follows:
 * 
 * <pre>
 *              &lt;property name=&quot;foo&quot; column=&quot;FOO_COL&quot;&gt;
 *                  &lt;type name=&quot;edu.wustl.common.hibernate.EnumType&quot;&gt;
 *                      &lt;param name=&quot;enum-name&quot;&gt;
 *                          com.foobar.FooCompoundEnum
 *                      &lt;/param&gt;
 *                  &lt;/type&gt;
 *              &lt;/property&gt;
 * </pre>
 * 
 * Note that <tt>enum-name</tt> is a parameter that specified the type of the
 * enum/compoundEnum. The same mapping works if <tt>FooCompoundEnum</tt> is an
 * <tt>enum</tt> instead of a <tt>compoundEnum</tt>.
 * <p>
 * <tt>EnumType</tt> persists the name of the enum/compoundEnum into the
 * database, and reads back the enum/compoundEnum constant based on the name
 * (using the <tt>valueOf</tt> method). Thus it is essential that a
 * compoundEnum obeys the {@link CompoundEnum} contract.
 * 
 * @author srinath_k
 * @see CompoundEnum
 */
public class EnumType implements UserType, ParameterizedType {
    private static final int[] sqlTypes = new int[]{Types.VARCHAR};

    private Class<?> enumClass;

    private static final Method COMPOUND_ENUM_NAME_METHOD = getMethod("name", CompoundEnum.class);

    private static final Method PRIMITIVE_ENUM_NAME_METHOD = getMethod("name", Enum.class);

    private Method valueOfMethod;

    public Object assemble(Serializable arg0, Object arg1) throws HibernateException {
        return arg1;
    }

    public Object deepCopy(Object arg0) throws HibernateException {
        return arg0;
    }

    public Serializable disassemble(Object arg0) throws HibernateException {
        return (Serializable) arg0;
    }

    public boolean equals(Object arg0, Object arg1) throws HibernateException {
        return arg0 == arg1;
    }

    public int hashCode(Object arg0) throws HibernateException {
        return arg0.hashCode();
    }

    public boolean isMutable() {
        return false;
    }

    public Object nullSafeGet(ResultSet rs, String[] names, Object owner) throws HibernateException, SQLException {
        return rs.wasNull() ? null : valueOf(rs.getString(names[0]));
    }

    private Object valueOf(String name) {
        return invoke(valueOfMethod, null, name);
    }

    private String name(Object obj) {
        Object res;
        if (obj instanceof CompoundEnum) {
            res = invoke(COMPOUND_ENUM_NAME_METHOD, obj);
        } else if (obj instanceof Enum) {
            res = invoke(PRIMITIVE_ENUM_NAME_METHOD, obj);
        } else {
            throw new IllegalArgumentException("obj not an enum type.");
        }
        return (String) res;
    }

    public void nullSafeSet(PreparedStatement statement, Object value, int index) throws HibernateException,
            SQLException {
        if (value == null) {
            statement.setNull(index, Types.VARCHAR);
        } else {
            statement.setString(index, name(value));
        }
    }

    public Object replace(Object original, Object target, Object owner) throws HibernateException {
        return original;
    }

    public Class<?> returnedClass() {
        return enumClass;
    }

    public int[] sqlTypes() {
        return sqlTypes;
    }

    public void setParameterValues(Properties properties) {
        String className = properties.getProperty("enum-name");
        try {
            enumClass = Class.forName(className);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        if (!(enumClass.isEnum() || CompoundEnum.class.isAssignableFrom(enumClass))) {
            throw new IllegalArgumentException("enum-name " + className + " is not an enum.");
        }

        valueOfMethod = getMethod("valueOf", enumClass, String.class);
    }

    private static Method getMethod(String name, Class<?> klass, Class<?>... paramClasses) {
        try {
            Method method = klass.getDeclaredMethod(name, paramClasses);
            method.setAccessible(true);
            return method;
        } catch (SecurityException e) {
            throw new RuntimeException(e);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static Object invoke(Method method, Object obj, Object... params) {
        try {
            return method.invoke(obj, params);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}