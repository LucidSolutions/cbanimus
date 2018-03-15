<cfoutput>
<cfset bodyHeaderStyle = "">
<cfset bodyHeaderH1Style = "">
<!---<cfif cb.themeSetting( 'overrideHeaderColors' )>
	<cfif len( cb.themeSetting( 'overrideHeaderBGColor' ) )>
		<cfset bodyHeaderStyle = bodyHeaderStyle & 'background-color: ' & cb.themeSetting( 'overrideHeaderBGColor' ) & ';'>
	</cfif>

	<cfif len( cb.themeSetting( 'overrideHeaderTextColor' ) )>
		<cfset bodyHeaderH1Style = bodyHeaderH1Style & 'color: ' & cb.themeSetting( 'overrideHeaderTextColor' ) & ';'>
	</cfif>
</cfif>--->

<!--- Body Main --->


<div id="details">
	<div class="container">
				<!--- ContentBoxEvent --->
				#cb.event("cbui_preEntryDisplay")#




								<div class="det_text">
									<cfif prc.entry.getFeaturedImage() NEQ ''>
										<div class="det_pic">
											<img src="#prc.entry.getFeaturedImage()#" class="img-responsive" alt="">
										</div>
									</cfif>
									<h2 class="det_title">#prc.entry.getTitle()#</h2>
									#prc.entry.renderContent()#
								</div>
								<ul class="links">
												 <li><a href="##"><i class="admin"> </i><span class="icon_text">Posted By: Admin</span></a></li>
												 <li><i class="comments"> </i><span class="icon_text">#prc.entry.getNumberOfApprovedComments()# Comments</span></li>
											 	 <li><i class="views"> </i><span class="icon_text">#prc.entry.getNumberOfHits()#</span></li>
												 <li><i class="tags"> </i><span class="icon_text">Tags: #cb.quickCategoryLinks(prc.entry)#</span></li>
											</ul>

												<cfif prc.entry.getNumberOfApprovedComments() NEQ ''>
													<div class="comments1">
														<h4>COMMENTS(#prc.entry.getNumberOfApprovedComments()#)</h4>
															#cb.quickComments()#
														</div>
												</cfif>



								<div class="lev">
								<div class="leave">
									<h4>Leave a comment</h4>
									</div>
									#cb.quickCommentForm( prc.entry )#


										</div>


					<!-- <cfif !args.print>
					- Comments Bar -
					#html.anchor(name="comments")#
					<div class="post-comments">
						<div class="infoBar">
							<cfif NOT cb.isCommentsEnabled(prc.entry)>
							<i class="icon-warning-sign icon-2x"></i>
							Comments are currently closed
							<cfelse>
								<p>
									<button class="btn btn-primary" onclick="toggleCommentForm()"><i class="fa fa-comments"></i> Add Comment (#prc.entry.getNumberOfApprovedComments()#)</button>
								</p>
							</cfif>
						</div>
					</div>

					- Separator -
					<div class="separator"></div>

					- Comment Form: I can build it or I can quick it? -
					<div id="commentFormShell">
						<div class="row">
							<div class="col-sm-12">
								#cb.quickCommentForm( prc.entry )#
							</div>
						</div>
					</div>
					</cfif> -->


					<!--- Display Comments --->


				<!--- ContentBoxEvent --->
				#cb.event("cbui_postEntryDisplay")#



	</div>
</div>

<!--- Custom JS --->
<script type="text/javascript">
	$(document).ready(function() {
		/*<!---<cfif cb.isCommentFormError()>--->*/
		//toggleCommentForm();
		/*<!---</cfif>--->*/
	});
	function toggleCommentForm(){
		$("##commentForm").slideToggle();
	}
</script>
</cfoutput>
