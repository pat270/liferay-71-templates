Make sure [generator-liferay-theme](https://github.com/liferay/liferay-themes-sdk/tree/master/packages/generator-liferay-theme) and [liferay-theme-tasks](https://github.com/liferay/liferay-themes-sdk/tree/master/packages/liferay-theme-tasks) are up to date before creating your theme.

## Liferay Theme Documentation 7.1 Theme

> Liferay Theme Documentation 7.1 Theme is a copy of Liferay Portal's 7.1 Unstyled Theme, with comments describing the purpose of each file. Don't deploy and use this theme, things will be broken and be hard to undo via the browser.

## Liferay 7.1 Theme Inheritance

Unstyled is the base theme for all themes in Liferay Portal and each theme will use the files from Unstyled unless there is a duplicate of the file matching the path and name. If there is a duplicate, then Liferay Portal will use the duplicate file instead of the file in Unstyled. This pattern will continue up the chain e.g., if your base theme is Styled.