<%--
- menu.jsp
-
- Copyright (C) 2012-2022 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.roles.Provider,acme.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" uri="urn:jsptagdir:/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.any.user-account.list" action="/any/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.list-chirp" action="/any/chirp/list"/>
			<acme:menu-separator/>
		    <acme:menu-suboption code="master.menu.anonymus.item.list-tool" action="/any/item/list-tool"/>
		    <acme:menu-suboption code="master.menu.anonymus.item.list-component" action="/any/item/list-component"/>
			<acme:menu-suboption code="master.menu.anonymus.toolkit.list" action="/any/toolkit/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link" action="http://www.example.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.gonmarfer2-link" action="https://www.youtube.com/watch?v=idn2UdOu5bE&list=PLkYgGmsQ2duxgqf7SI43cStQVXHCbRF9a&index=7"/>
			<acme:menu-suboption code="master.menu.anonymous.jaimosber-link" action="https://www.twitch.com/alexelcapo"/>
			<acme:menu-suboption code="master.menu.anonymous.antcamgil-link" action="https://www.youtube.com/shorts/Xec2NPpXsUI"/>
			<acme:menu-suboption code="master.menu.anonymous.anaconmar-link" action="https://www.zalando.es/mujer-home/"/>
			<acme:menu-suboption code="master.menu.anonymous.enrmunper-link" action="https://www.realbetisbalompie.es/"/>
			<acme:menu-suboption code="master.menu.anonymous.jaiborcon-link" action="https://www.youtube.com/watch?v=vTOurabBRxY&ab_channel=LinkSpets"/>
		</acme:menu-option>
		

		<acme:menu-option code="master.menu.authenticated" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.announcement" action="/authenticated/announcement/list"/>
			<acme:menu-suboption code="master.menu.authenticated.user-account.list" action="/any/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.authenticated.list-chirp" action="/any/chirp/list"/>
			<acme:menu-separator/>
		    <acme:menu-suboption code="master.menu.authenticated.item.list-tool" action="/any/item/list-tool"/>
		    <acme:menu-suboption code="master.menu.authenticated.item.list-component" action="/any/item/list-component"/>
			<acme:menu-suboption code="master.menu.authenticated.toolkit.list" action="/any/toolkit/list"/>
		    <acme:menu-suboption code="master.menu.authenticated.configuration" action="/authenticated/system-configuration/show"/>
		
		
		
		
		</acme:menu-option>


		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.dashboard" action="/administrator/administrator-dashboard/show"/>
			<acme:menu-suboption code="master.menu.administrator.system-configuration" action="/administrator/system-configuration/show"/>
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.populate-initial" action="/administrator/populate-initial"/>
			<acme:menu-suboption code="master.menu.administrator.populate-sample" action="/administrator/populate-sample"/>			
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shut-down" action="/administrator/shut-down"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.patron" access="hasRole('Patron')">
			<acme:menu-suboption code="master.menu.patron.patronages" action="/patron/patronage/list"/>
      		<acme:menu-suboption code="master.menu.patron.patronage-reports" action="/patron/patronage-report/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.patron.dashboard" action="/patron/patron-dashboard/show"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.inventor" access="hasRole('Inventor')">
			<acme:menu-suboption code="master.menu.inventor.patronage" action="/inventor/patronage/list"/>
			<acme:menu-suboption code="master.menu.inventor.patronage-report" action="/inventor/patronage-report/list"/>
			<acme:menu-separator/>
      		<acme:menu-suboption code="master.menu.inventor.item.list-tool" action="/inventor/item/list-tool"/>
      		<acme:menu-suboption code="master.menu.inventor.item.list-component" action="/inventor/item/list-component"/>
			<acme:menu-suboption code="master.menu.inventor.toolkit" action="/inventor/toolkit/list"/>
		</acme:menu-option>
	</acme:menu-left>
<acme:message code=""/>
	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.any.user-account.list" action="/any/user-account/list"/>
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>