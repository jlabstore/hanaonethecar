
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authentication var="user" property="principal" />
<sec:authentication var="auth" property="authorities"/>



<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>
	<h5 class="text-primary" style="margin-bottom: 0px;">${topMenuName}</h5>

	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">

		<div class="topbar-divider d-none d-sm-block"></div>
		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow">
				<span class="mr-3 d-none d-lg-inline text-gray-600">
					<strong>${user != null ? user.id : ''}</strong>님
				</span>
				<button
					type="button"
					class="btn btn-outline-secondary"
					data-toggle="modal"
					data-target="#logoutModal"
				>
					<i class="fas fa-sign-out-alt fa-sm fa-fw text-gray-400"></i>
					Log out
				</button>
		</li>

	</ul>

</nav>

