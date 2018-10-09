<#if has_navigation && is_setup_complete>
	<button aria-controls="navigationCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right" data-target="#navigationCollapse" data-toggle="collapse" type="button">
		<svg aria-hidden="true" class="lexicon-icon lexicon-icon-bars">
			<use xlink:href="${images_folder}/clay/icons.svg#bars" />
		</svg>
	</button>

	<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
		<@liferay.navigation_menu
			default_preferences=freeMarkerPortletPreferences.getPreferences({
				"displayStyle": "ddmTemplate_NAVBAR-BLANK-FTL",
				"portletSetupPortletDecoratorId": "barebone"
			})
			instance_id='site_nav1'
		/>
	</div>
</#if>