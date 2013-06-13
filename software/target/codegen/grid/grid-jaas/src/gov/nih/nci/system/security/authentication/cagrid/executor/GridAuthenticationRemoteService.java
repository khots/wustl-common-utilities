/*L
 *  Copyright Washington University in St. Louis
 *  Copyright SemanticBits
 *  Copyright Persistent Systems
 *  Copyright Krishagni
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/wustl-common-utilities/LICENSE.txt for details.
 */

package gov.nih.nci.system.security.authentication.cagrid.executor;

import javax.security.auth.login.CredentialNotFoundException;

public interface GridAuthenticationRemoteService
{
	public void authenticate(String bindKey, String username, String password, String authenticationServiceURL, String dorianServiceURL) throws CredentialNotFoundException,Exception;

	public void authenticate(String bindKey, String username, String password) throws CredentialNotFoundException,Exception;
	
}