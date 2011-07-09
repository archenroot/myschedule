<%@ include file="/WEB-INF/views/page-a.inc" %>
<%@ include file="/WEB-INF/views/dashboard/menu.inc" %>
<%@ include file="/WEB-INF/views/dashboard/submenu.inc" %>
<style>
#create-scheduler-service {
	width: 100%;
	margin-right: 10px;
}
#create-scheduler .label {
	margin-top: 2px;
	margin-bottom: 2px;
}
#configPropsText {
	font-size: 1.5em;
	height: 2.0em;
	font-height: 1.2em;
	margin-top: 2px;
	margin-bottom: 2px;
}
#configPropsText {
	height: 20.0em;
	width: 100%;
}
#submit {
	font-size: 1.5em;
}
</style>
<script>
$(document).ready(function() {
	$("#config-in-memory").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.in-memory");
	});
	$("#config-jmx").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.jmx");
	});
	$("#config-rmi-server").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.rmi-server");
	});
	$("#config-rmi-client").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.rmi-client");
	});
	$("#config-database").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.database");
	});
	$("#config-database-clustered").click(function() {
		$("#configPropsText").load("${ mainPath }/dashboard/get-config-eg?name=quartz.properties.database-clustered");
	});
});
</script>
<h1>Create New Scheduler Service</h1>
<div id="create-scheduler-service">
<form method="post" action="create-action">

<div>
<label class="label">
Quartz Scheduler Config Properties
<span style="label-notes">(Eg: 
	<a name="config-in-memory" id="config-in-memory">In-Memory</a>, 
	<a name="config-jmx" id="config-jmx">Jmx Enabled</a>, 
	<a name="config-rmi-server" id="config-rmi-server">RMI Server</a>, 
	<a name="config-rmi-client" id="config-rmi-client">RMI Client</a>, 
	<a name="config-database" id="config-database">Database</a>, 
	<a name="config-database-clustered" id="config-database-clustered">Database Cluster Node</a>
)</span>
</label>
<textarea id="configPropsText" name="configPropsText"></textarea>
</div>

<input id="submit" type="submit" value="Create Scheduler"/>

</form>
</div><!-- create-scheduler-service -->

<%@ include file="/WEB-INF/views/page-b.inc" %>