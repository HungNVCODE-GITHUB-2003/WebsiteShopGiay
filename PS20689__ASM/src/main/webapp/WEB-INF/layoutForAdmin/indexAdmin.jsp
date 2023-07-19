<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="UTF-8">
	<title>HungSmall_FootWear</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/forAdmin/public/img/favicon.ico">

    
    
    <!-- DEMO CHARTS -->
    <link rel="stylesheet" href="/forAdmin/public/demo/chartist.css">
    <link rel="stylesheet" href="/forAdmin/public/demo/chartist-plugin-tooltip.css">

    <!-- Template -->
    <link rel="stylesheet" href="/forAdmin/public/graindashboard/css/graindashboard.css">

</head>

<body class="has-sidebar has-fixed-sidebar-and-header">
   
        <tiles:insertAttribute name="headerAdmin"/>
		<tiles:insertAttribute name="sidebarAdmin"/>
		<tiles:insertAttribute name="bodyAdmin"/> 
  		 
    <!-- All Jquery -->
     


<script src="/forAdmin/public/graindashboard/js/graindashboard.js"></script>
<script src="/forAdmin/public/graindashboard/js/graindashboard.vendor.js"></script>

<!-- DEMO CHARTS -->
<script src="/forAdmin/public/demo/resizeSensor.js"></script>
<script src="/forAdmin/public/demo/chartist.js"></script>
<script src="/forAdmin/public/demo/chartist-plugin-tooltip.js"></script>
<script src="/forAdmin/public/demo/gd.chartist-area.js"></script>
<script src="/forAdmin/public/demo/gd.chartist-bar.js"></script>
<script src="/forAdmin/public/demo/gd.chartist-donut.js"></script>
<script>
    $.GDCore.components.GDChartistArea.init('.js-area-chart');
    $.GDCore.components.GDChartistBar.init('.js-bar-chart');
    $.GDCore.components.GDChartistDonut.init('.js-donut-chart');
</script>
</body>

</html>