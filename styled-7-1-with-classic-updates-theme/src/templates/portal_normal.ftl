<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<#if show_header>
		<header id="banner">
			<div class="navbar navbar-classic navbar-top pt-3">
				<div class="container user-personal-bar">
					<div class="autofit-float autofit-row autofit-row-center">
						<div class="autofit-col d-none d-md-flex">
							<div class="autofit-section">
								<a class="${logo_css_class} logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
									<img alt="${logo_description}" class="logo-site-image mr-2" height="56" src="${site_logo}" />

									<#if show_site_name>
										<h1 class="logo-site-name">${site_name}</h1>
									</#if>
								</a>
							</div>
						</div>

						<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

						<div class="autofit-col autofit-col-expand">
							<#if show_header_search>
								<div class="justify-content-md-end mr-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
			</div>

			<div class="navbar navbar-classic navbar-expand-md navbar-light py-3">
				<div class="container">
					<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs" href="${site_default_url}" rel="nofollow">
						<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

						<#if show_site_name>
							<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
						</#if>
					</a>

					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</div>
		</header>
	</#if>

	<section class="${portal_content_css_class}" id="content">
		<h1 class="sr-only">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
</div>

<#if show_footer>
	<footer id="footer" role="contentinfo">
		<div class="container">
			<@liferay.language key="powered-by" />

			<a class="footer-link" href="http://www.liferay.com" rel="external">Liferay</a>
		</div>
	</footer>
</#if>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>