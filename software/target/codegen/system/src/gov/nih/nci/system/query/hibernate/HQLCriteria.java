/*L
 *  Copyright Washington University in St. Louis
 *  Copyright SemanticBits
 *  Copyright Persistent Systems
 *  Copyright Krishagni
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/wustl-common-utilities/LICENSE.txt for details.
 */

package gov.nih.nci.system.query.hibernate;

import java.io.Serializable;
import java.util.List;

/**
 * @author Satish Patel
 *
 */
public class HQLCriteria implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String hqlString;
	private String countHqlString;
	private List parameters;	
	
	public HQLCriteria(String hqlString)
	{
		this.hqlString = hqlString;
	}
	
	public HQLCriteria(String hqlString, List parameters)
	{
		this.hqlString = hqlString;
		this.parameters = parameters;
	}	

	public HQLCriteria(String hqlString, String countHqlString, List parameters)
	{
		this.hqlString = hqlString;
		this.parameters = parameters;
		this.countHqlString = countHqlString;
	}	

	public String getHqlString()
	{
		return this.hqlString;
	}

	public List getParameters() {
		return parameters;
	}

	public void setHqlString(String hqlString)
	{
		this.hqlString = hqlString;
	}

	public void setParameters(List parameters) {
		this.parameters = parameters;
	}

	public String getCountHqlString() {
		return countHqlString;
	}

	public void setCountHqlString(String countHqlString) {
		this.countHqlString = countHqlString;
	}
	
}
