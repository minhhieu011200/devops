# Change Log

## 2.1.0

🚀 **OAuth2**: Added ability to set auth style in client credentials

🚀 **Azure blob storage**: Support for reading content from Azure Blog Storage

🚀 **Logs**: Added support for visualizing data in `logs` format

🚀 **Trace**: Added support for visualizing data in `trace` format

🚀 **Macros**: Added support for macros in computed columns and filter expression when used with backend parser

🚀 **URL**: Support for gitlab blob to raw URL conversion added

🚀 **URL**: Support for bitbucket blob to raw URL conversion added

🚀 **Parser**: Added support for explicit boolean parsing in default and backend parsers

🚀 **Config Editor**: Preview / Sample request added to some authentication types

🛡️ **Security**: Backend binaries are compiled with golang 1.21.3 which also contains [security fixes](https://groups.google.com/g/golang-announce/c/2q13H6LEEx0) from previous versions

🐛 **UI**: Fixed a bug in query editor where buttons were rendered incorrectly

🐛 **OAuth2**: Applied a fix for the UI crash when editing OAuth2 section in the config editor

🐛 **URL normalization**: Fixed a bug where some github URLs were interpolated incorrectly. Fixes [#604](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/604)

🐛 **Test**: Fixed a bug in tests

🐛 **Docs**: Removed `Cmd/Ctrl+F` key binding in the docs website in favour of native browser search

⚙️ **Chore**: Grafana plugin SDK `grafana/grafana-plugin-sdk-go` updated to `v0.174.0` from `v0.189.0`

⚙️ **Chore**: Updated backend packages

⚙️ **Test** More test data/examples added

## 2.0.0

🎉 **Pagination**: Added pagination support for json type queries ( backend parser ). Refer [this github discussion](https://github.com/yesoreyeram/grafana-infinity-datasource/discussions/601) for more details

🎉 **Transformation**: Added support for server side transformations via transformations query type. This version supports transformations such as `limit`, `filterExpression`, `computedColumn` and `summarize`. Refer [this github discussion](https://github.com/yesoreyeram/grafana-infinity-datasource/discussions/614) for more details

🚀 **Health Check**: Added support for custom health check

🚀 **Config editor**: Updated config editor UI

🐛 **Logging**: Updated backend logging for improved debugging experience

🐛 **docs**: updated docs about user agent header

🐛 **Logging**: Consuming `reportInteraction` from the `@grafana/runtime` library for reporting queries

⚙️ **Chore**: Added changeset to the build/publish pipeline

⚙️ **Chore**: update grafana backend plugin SDK from v0.159.0 to v0.162.0

⚙️ **Chore**: Backend binaries are now compiled with Go 1.20.4 which contains **security patches**

## [ 1.4.1 ]

- **UQL** Support for `pivot` function added in UQL
- **Chore** Backend binaries are now compiled with Go 1.20.3 which contains **security patches**
- **Chore** Updated frontend dependencies including security **security patches**

## [ 1.4.0 ]

- **Variables** Support for custom display values in variables ( using `__text` and `__value` as field names )
- **Backend parser** Added support for numeric datetime (ex: 20221227 can now be treated as valid datetime with YYYYMMDD format)
- **Global variables** Support for global time variables `${__from}` and `${__to}` in backend queries
- **Bug fix** Fixes [a bug](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/509) where variables weren't interpolated with xml/html backend queries.
- **Bug fix** Fixed [a bug](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/453) where BOM encoded response weren't parsed correctly
- **Auth** Health check validation updated
- **Docs** Docs site UI update

## [ 1.3.0 ]

- **Auth** Added support for **AWS authentication** using AWS Access and AWS Secret key
- **UQL** Support for new methods `atob`, `btoa` and `substring`
- **Chore** Backend binaries are now compiled with Go 1.19.5

## [ 1.2.0 ]

- **XML** Support for backend parser (alerts, recorded queries, public dashboards etc)
- **HTML** Support for backend parser (alerts, recorded queries, public dashboards etc)
- **Inline** Support for adding and querying reference data globally as alternative to inline data
- **Security** Backend binaries are now compiled with latest GoLang version 1.19.3 which fixes CVE-2022-41716
- **Backend Parser** Root data selector in the backend parser now supports JSONata
- **Chore** Grafana backend plugin SDK updated to latest
- **Chore** E2E tests updated

## [ 1.1.0 ]

- **Computed fields** Backend parser now supports computed fields (beta)
- **Filter** Backend parser now supports data filter (beta)
- **Summarize** Backend parser now supports summarize into numeric, string and binary fields (beta)
- **GraphQL** Support for backend parser (alerts, recorded queries, public dashboards etc)
- **GraphQL** Support for GROQ parser
- **CSV/TSV** Support for backend parser (alerts, recorded queries, public dashboards etc)
- **Auth** Support for Google JWT Token authentication (via guided auth providers)
- **Inline Data** Support for importing local files as inline data (experimental)
- **Google Sheets** Support for querying data from Google Sheets (beta)
- **UX** Reorganized quey fields. URL options such as headers, body, params moved to their own section
- **Help** Simplified inline help page
- **Demo** Removed demo instance due to pricing changes in heroku. (will figure out alternatives later)
- **Chore** Removed unused metrics resource handler

## [ 1.0.1 ]

- **Macros/Variables** Global variables in queries such as `${__user.name}`,`${__user.email}` and `${__user.login}` interpolated correctly in server side
- **Bug fix** Fixed a bug where editor crashes when using POST method in variable editor. Fixes [#413](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/413)

## [ 1.0.0 ]

### **New Features & Bug Fixes**

- **New Query Type**: JSON Backend (with support for alerting)( **beta** )
- **New Auth Type**: Digest auth support
- **New Macro**: Support for macros (`$__combineValues()`,`$__customInterval()`) added in URL, Body, Inline data, UQL queries
- **New Variable Query Type**: Random String from given array of strings
- **URL**: More body types supported. (including `raw`, `form-data`, `x-www-form-urlencoded`)
- **UQL**: new root level command `where` added to support basic filters
- **UQL**: new method `extract` added to extract part of the string using regex
- **UQL**: new summarize methods `countif`, `sumif`, `minif` and `maxif`
- **UQL**: new methods `percentage`,`split`,`replace_string`,`reverse`,`pack`,`array_to_map` and `array_from_entries`
- **As-Is**: Support for URL when using As-Is format with JSON
- **UX**: Variables interpolated in queries when navigating from dashboard to explore page
- **Chore**: Updated cypress and improved E2E tests coverage
- **Chore**: prometheus `metrics` resource endpoint added ( _experimental_ )

### **BREAKING CHANGES**

#### **Authentication & Allowed host URLs**

If you are using any APIs/URLs that require authentication, You will now need to specify the list of allowed Host URLs in the config. This change is introduced to allow additional security to your endpoints.

To migrate your existing datasources, add allowed URLs/allowed Hosts in the datasource configuration section. Example: If you are using `https://foo.com/some/path?id=123` which require authentication, you will need to add `https://foo.com` in the allowed hosts list.

If your datasource is provisioned, then you have to add the following to your provisioning yaml file.

```yaml
jsonData:
  allowedHosts:
    - https://foo.com
```

If the allowed hosts are not configured correctly, you will get `Datasource is missing allowed hosts/URLs. Configure it in the datasource settings page.` error when performing the query.

Learn more about this breaking change in the [github discussion](https://github.com/yesoreyeram/grafana-infinity-datasource/discussions/322)

#### **Content-Type and Accept headers**

The default header values for `Content-Type` and `Accept` are changing. The default value for these headers are set as follows

- For `json` and `graphql` types, the `Accept` will be now set to `application/json;q=0.9,text/plain`
- For `csv` query type, the `Accept` header will now be set to `text/csv; charset=utf-8`
- For `xml` query type, the `Accept` header will now be set to `text/xml;q=0.9,text/plain`

- For http `post` methods, the `Content-Type` header value will be set to `Content-Type` for `json` and `graphql` query types

You can override these headers, in settings/query headers.

### **Minimum Grafana version update**

Minimum required grafana version for the infinity plugin is now Grafana v8.4.7. Though the older versions are expected to work, there may be some minor unexpected issues.

## [ 0.8.8 ]

- UQL: New command `jsonata` which helps to perform JSONata query over json, xml, csv APIs
- Chore: More logging added in backend for failure scenarios
- Chore: Provisioning helper added to the datasource config page which provides datasource yaml for provisioning

## [ 0.8.7 ]

- UQL: New command `distinct`
- UQL: New function `kv` which provide kv pair array from object. (useful when the results are key value format)
- UQL: New mathematical functions (`floor`/`ceil`/`round`/`sign`/`pow`/`sin`/`cos`/`tan`/`log`/`log2`/`log10`)
- Bug fix: Fixed a bug where error from the API causing segment violation error (#299)
- Bug fix: Fixed a bug where UQL editor throw error sometimes when using grafana versions higher than 8.3.4
- Bug fix: Fixed a bug where negative numbers in string were converted to positive numbers (#297)

## [ 0.8.6 ]

- UQL: Now support comments. Any new line starts with `#` will be treated as comment
- UQL: New command `mv-expand`
- UQL: New functions `parse_url`, `parse_urlquery`
- UQL: Fixed a bug where new line in UQL throws error when queries created from windows systems
- UQL: keyword suggestions for UQL Query editor

## [ 0.8.5 ]

- Auth: Fixed a bug where custom endpoint params were ignored when using OAuth2 client credentials
- Auth: Fixed a bug where TLS certs are not loaded correctly

## [ 0.8.4]

- Auth: Dedicated Auth types added for Api key authentication and bearer token authentication
- Security: Ability to configure allowed hosts for URL
- YAML: YAML query type support added via UQL. (experimental)

## [ 0.8.3 ]

- UQL: UQL update ( now support summarize by multiple fields, first, last summarizations )
- XML: Fixed a bug where numbers shown as null when using timeseries format. fix #254

## [ 0.8.2 ]

- XML: Fixed a bug where numbers shown as null when using timeseries format. fix #254

## [ 0.8.1 ]

- Auth: Forward OAuth identity support
- Auth: OAuth2 Client credentials authentication support - alpha
- Auth: OAuth2 JWT authentication support - alpha
- Chore: Query inspector now shows actual data in response meta data. (frame->schema->meta->custom)
- GROQ: GROQ Query support - alpha

## [ 0.8.0 ]

- TSV: custom query type for tsv files
- UQL: support for UQL queries
- Chore: secure query params passed to all requests by default
- NodeGraph: support for Node Graph panel
- Chore: basic E2E tests for config editor added
- Chore: typescript updates
- "as-is" data format added for debugging
- comma in the numbers are now ignored and considered as number
- variable editor, global query editor bug fixes. Previously, unable to add columns in variable editor
- fixes [#191](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/191), [#146](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/146), [#210](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/210)

## [ 0.7.10 ]

- proxy support for outgoing requests

## [ 0.7.9 ]

- Ability to customize timeout

## [ 0.7.8 ]

- Bug fixes, docs update

## [ 0.7.7 ]

- Bug fixes and docs update
- DEPRECATED : URL field in the datasource config is now deprecated. Use URL in the Query Editor.
- DEPRECATED : Global queries are now deprecated in favour of Grafana's panel library

## [ 0.7.6 ]

- UnixTimeStamp variable added (alpha)
- Changed try url to [heroku](https://grafana-infinity-datasource.herokuapp.com/explore)

## [ 0.7.5 ]

- Fixed a bug where data not loading where no column names provided
- Support auto parse for more JSON types

## [ 0.7.4 ]

- Enabled support for annotations
- Results return correct frame name. Now returning RefId as frame name.
- Minimum required version of grafana is now 7.2.0
- Moved docs to gh-pages

## [ 0.7.3 ]

- Variable editor bug fixes
- Columnar format support

## [ 0.7.2 ]

- Github URLs normalized
- Auto find array data

## [ 0.7.1 ]

- Fix for [mixed datasource mode not working in 0.7](https://github.com/yesoreyeram/grafana-infinity-datasource/issues/78)

## [ 0.7.0 ]

- Data frame format added
- Custom secure query strings support added
- Support for custom headers and query strings in individual queries
- More CSV options - TSV, optional headers support, custom delimiters, etc
- Allow variables in root/rows selector
- Placeholder for migrating into backend plugin
- Migrated website from vuepress to gatsby
- Vercel deployment added for website

## [ 0.6.1 ]

- Plugin signed
- JSONPath support for JSON root selector
- Auto generate columns for CSV, JSON
- Support for Unix/epoch seconds format
- Support for filtering rows
- Variable Query support
- Logo updated
- Published to [grafana.com](https://grafana.com/grafana/plugins/yesoreyeram-infinity-datasource/)

## [ 0.5.0 ]

- XML Support

## [ 0.4.0 ]

- Registered / Global Queries
- UNIX EPOCH / millisecond timestamp format
- Template variables support. Collection, CollectionLookup and Join variable
- Bug fixes

## [ 0.3.0 ]

- Authentication support
- Variables support in query url & data

## [ 0.2.0 ]

- GraphQL Support
- Mathematical expressions and Random Walk

## [ 0.1.0 ]

- Inline CSV / JSON support
- Stats / Timeseries format support

## [ 0.0.1 ]

- First working version
