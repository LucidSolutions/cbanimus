<cfoutput>
<!--- ContentBoxEvent --->
#cb.event( "cbui_BeforeSideBar" )#




<cfif cb.themeSetting( "showCategoriesBlogSide", true )>

<div class="integ">
	<div class="l_g_r">
	<div class="posts">
		<h4>Categories</h4>
	<ul>
		#cb.quickCategories()#
	</ul>
</div>
</cfif>

<cfif cb.themeSetting( "showRecentEntriesBlogSide", true )>
<div class="comments posts" style="margin-top:20px;">
		<h4>Recent Entries</h4>
	#cb.widget( 'RecentEntries' )#
</div>
</cfif>

<cfif cb.themeSetting( "showSiteUpdatesBlogSide", true )>
<!--- RSS Buttons --->
<div class="categories posts">
		<h4>Site Updates</h4>
		<div class="rss">
			<a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!"><i class="fa fa-rss"></i></a> <a href='#cb.linkRSS()#' title="Subscribe to our RSS Feed!">RSS Feed</a>
		</div>
</div>
</cfif>

<br />
<cfif cb.themeSetting( "showArchivesBlogSide", true )>
<div class="posts">
		<h4>Archives</h4>
	#cb.widget( "Archives" )#
</div>
</cfif>


<!--- ContentBoxEvent --->
#cb.event( "cbui_afterSideBar" )#
</div>
</div>
</cfoutput>
