/**
 * 
 */
package com.softech.vu360.lms.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.softech.vu360.lms.model.OrganizationalGroup;

/**
 * @author marium.saud
 *
 */
public interface OrganizationalGroupRepository extends CrudRepository<OrganizationalGroup, Long>,OrganizationalGroupRepositoryCustom {
	
	//public List<OrganizationalGroup>  getOrgGroupByNames(String orgGroupNames[],Customer customer);
	public List<OrganizationalGroup>  findByCustomerIdAndNameIn(Long customerId, String orgGroupNames[]);

	
	//public List<OrganizationalGroup>  getOrgGroupsById(String orgGroupId[]);//legacy function, implemented below according to Spring data
	/** reason behind nativeQuery because this function is taking String array but it should be of type Long
	 *  reason behind to not change String to long because of big change in controllers
	 */
	@Query(value = "SELECT * FROM ORGANIZATIONALGROUP WHERE id in (:ids)", nativeQuery = true)
	public List<OrganizationalGroup>  findByIdIn(@Param("ids") String orgGroupId[]);
	
	
	//public List<OrganizationalGroup> getAllOrganizationalGroups(Customer customer);//legacy function, implemented below according to Spring data
	//public List<OrganizationalGroup>  getOrgGroupsByCustomer(Customer customer, VU360User loggedInUser);//legacy function, implemented below according to Spring data
	public List<OrganizationalGroup>  findByCustomerId(Long customerId);
	
	
	//public OrganizationalGroup getRootOrgGroupForCustomer(Customer customer)
	public List<OrganizationalGroup>  findByCustomerIdAndRootOrgGroupIsNull(Long customerId);

	public void deleteById(Long Id);
	
	@Query(value = "SELECT * "
			+ "FROM #{#entityName} "
			+ "WHERE NAME LIKE :groupName "
			+ "and ID IN "
			+ "    (SELECT ORGANIZATIONALGROUP_ID "
			+ "     FROM ALERTRECIPIENT_ORGANIZATIONALGROUP "
			+ "     WHERE ALERTRECIPIENT_ID = :alertRecipientId"
			+ "    )", nativeQuery=true)
	List<OrganizationalGroup> getOrganisationGroupsUnderAlertRecipient(@Param("alertRecipientId")Long alertRecipientId , @Param("groupName")String groupName );
	
	@Query(value = "SELECT * "
			+ "FROM #{#entityName} "
			+ "WHERE NAME LIKE :groupName "
			+ "and ID IN "
			+ "    (SELECT ORGANIZATIONALGROUP_ID "
			+ "	    FROM ALERTTRIGGERFILTER_ORGANIZATIONALGROUP "
			+ "     WHERE ALERTTRIGGERFILTER_ID = :alertTriggerFilterId"
			+ "    )", nativeQuery=true)
	List<OrganizationalGroup> getOrganisationGroupsUnderAlertTriggerFilter(@Param("alertTriggerFilterId")Long alertTriggerFilterId , @Param("groupName")String groupName );
}
