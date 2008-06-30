package edu.wustl.common.hibernate;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang.builder.HashCodeBuilder;

import edu.wustl.common.util.Graph;

public class PersistentGraph<V, E> extends Graph<V, E> {
    private static final long serialVersionUID = 5607285510168767311L;

    private static class Entry<V, E> implements Serializable {
        private static final long serialVersionUID = -5521651636166250171L;

        private V source, target;

        private E edge;

        private Long id;

        private Entry() {

        }

        private Entry(V source, V target, E edge) {
            this.source = source;
            this.target = target;
            this.edge = edge;
        }

        private E getEdge() {
            return edge;
        }

        private void setEdge(E edge) {
            this.edge = edge;
        }

        private V getSource() {
            return source;
        }

        private void setSource(V source) {
            this.source = source;
        }

        private V getTarget() {
            return target;
        }

        private void setTarget(V target) {
            this.target = target;
        }

        private Long getId() {
            return id;
        }

        private void setId(Long id) {
            this.id = id;
        }

        @SuppressWarnings("unchecked")
        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry<V, E> o = (Entry<V, E>) obj;
            return source.equals(o.source) && target.equals(o.target)
                    && (edge == null ? o.edge == null : edge.equals(o.edge));
        }

        @Override
        public int hashCode() {
            return new HashCodeBuilder().append(source).append(target).append(edge).toHashCode();
        }
    }

    private Long id;

    private Set<Entry> entries = new HashSet<Entry>();

    private Set<V> vertices = new HashSet<V>();

    private Set<Entry> getEntries() {
        return entries;
    }

    private void setEntries(Set<Entry> entries) {
        if (entries != null) {
            for (Entry<V, E> entry : entries) {
                putEdge(entry.source, entry.target, entry.edge);
            }
        }
    }

    private void setVertices(Set<V> vertices) {
        if (vertices != null) {
            for (V vertex : vertices) {
                addVertex(vertex);
            }
        }
    }

    private Long getId() {
        return id;
    }

    private void setId(Long id) {
        this.id = id;
    }

    @Override
    public E putEdge(V source, V target, E edge) {
        E res = super.putEdge(source, target, edge);
        entries.add(newEntry(source, target, edge));
        return res;
    }

    @Override
    public E removeEdge(V source, V target) {
        E edge = super.removeEdge(source, target);
        entries.remove(newEntry(source, target, edge));
        return edge;
    }

    @Override
    public boolean addVertex(V vertex) {
        return super.addVertex(vertex) ? vertices.add(vertex) : false;
    }

    @Override
    public boolean removeVertex(V vertex) {
        return super.removeVertex(vertex) ? vertices.remove(vertex) : false;
    }

    private Entry<V, E> newEntry(V source, V target, E edge) {
        return new Entry<V, E>(source, target, edge);
    }
}
