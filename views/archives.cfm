<cfoutput>
<cfset bodyHeaderStyle = "">
<cfset bodyHeaderH1Style = "">
<cfif cb.themeSetting( 'overrideHeaderColors' )>
	<cfif len( cb.themeSetting( 'overrideHeaderBGColor' ) )>
		<cfset bodyHeaderStyle = bodyHeaderStyle & 'background-color: ' & cb.themeSetting( 'overrideHeaderBGColor' ) & ';'>
	</cfif>

	<cfif len( cb.themeSetting( 'overrideHeaderTextColor' ) )>
		<cfset bodyHeaderH1Style = bodyHeaderH1Style & 'color: ' & cb.themeSetting( 'overrideHeaderTextColor' ) & ';'>
	</cfif>
</cfif>

<!--- Body Main --->
<div id="body-main"  class="content">
	<div class="container">
		<div class="load_more">
			<!--- Content --->

			<div class="col-sm-9 col-md-9">
				<cfif rc.year NEQ 0>
					<div class="alert alert-info">
						<a class="pull-right btn btn-primary btn-sm" href="#cb.linkBlog()#" title="Remove filter and view all entries">Remove Filter</a>
						Blog Archives - #prc.entriesCount# Record(s)
						<br />
						Year: '#rc.year#'
						<cfif rc.month NEQ 0>- Month: '#rc.month#'</cfif>
						<cfif rc.day NEQ 0>- Day: '#rc.day#'</cfif>
					</div>
					<br/>
				</cfif>
				<!--- ContentBoxEvent --->
				#cb.event( "cbui_preIndexDisplay" )#

				<!--- Are we filtering by category? --->

				<!--- Entries displayed here --->
				<div class="row">
					#cb.quickEntries()#
				</div>

				<!--- ContentBoxEvent --->
				#cb.event( "cbui_postIndexDisplay" )#
				<br />
				<cfif prc.entriesCount>
					<div class="row col-md-12 paging">
					 #cb.quickPaging()#
				 </div>
			 </cfif>
			</div>

			<!--- SideBar --->
			<cfif args.sidebar>
			<div class="col-sm-3 col-md-3" id="blog-sidenav">
				#cb.quickView( view='_blogsidebar', args=args )#
			</div>
			</cfif>

		</div>
	</div>
</div>
</cfoutput>
