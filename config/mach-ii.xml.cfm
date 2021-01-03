<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mach-ii PUBLIC "-//Mach-II//DTD Mach-II Configuration 1.8.0//EN" "http://www.mach-ii.com/dtds/mach-ii_1_8_0.dtd">
<mach-ii version="1.8">
	<includes/>
	<modules/>

	<properties>
		<property name="applicationRoot" value="/"/>
		<property name="defaultEvent" value="showHome"/>
		<property name="eventParameter" value="event"/>
		<property name="parameterPrecedence" value="form"/>
		<property name="exceptionEvent" value="exceptionEvent"/>
	</properties>

	<listeners/>
	<event-filters/>

	<event-handlers>
		<event-handler event="showHome" access="public">
			<view-page name="home"/>
		</event-handler>

		<event-handler event="showInfo" access="public">
			<view-page name="info"/>
		</event-handler>

		<event-handler event="showFooBar" access="public">
			<view-page name="foo/bar"/>
		</event-handler>

		<event-handler event="exceptionEvent" access="private">
			<view-page name="exception"/>
		</event-handler>
	</event-handlers>

	<page-views>
		<page-view name="home" page="/views/home.cfm"/>
		<page-view name="exception" page="/views/exception.cfm"/>
		<page-view name="info" page="/extviews/info.cfm"/>
		<!--
		<view-loader type="MachII.framework.viewLoaders.PatternViewLoader">
			<parameters>
				<parameter name="pattern" value="mapping://extviews/**/*.cfm"/>
			</parameters>
		</view-loader>
		-->
	</page-views>

	<plugins/>
</mach-ii>
