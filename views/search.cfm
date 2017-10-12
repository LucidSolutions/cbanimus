<cfoutput>
	<!--- ContentBoxEvent --->
	#cb.event( "cbui_prePageDisplay" )#

	<div id="body-main" class="back_color">

		<!--- search Results --->
		<div class="container">
			<h2>Search Results</h2>

			<!--- Search Results --->
			#cb.getSearchResultsContent()#

			<!--- Search paging --->
			<div class="row col-md-12 paging">
			 #cb.quickSearchPaging()#
		 </div>
		</div>

	</div>

	<!--- ContentBoxEvent --->
	#cb.event( "cbui_postPageDisplay" )#
</cfoutput>
