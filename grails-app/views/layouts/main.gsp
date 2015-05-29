%{--
  - Copyright 2015 the original author or authors
  -
  - Licensed under the Apache License, Version 2.0 (the "License");
  - you may not use this file except in compliance with the License.
  - You may obtain a copy of the License at
  -
  -     http://www.apache.org/licenses/LICENSE-2.0
  -
  - Unless required by applicable law or agreed to in writing, software
  - distributed under the License is distributed on an "AS IS" BASIS,
  - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  - See the License for the specific language governing permissions and
  - limitations under the License.
  --}%

<!doctype html>
<html lang="ja" class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title><g:layoutTitle default="libralog"/></title>
  <asset:stylesheet src="application.css"/>

  <g:layoutHead/>
  <!-- html5 shim and respond.js for ie8 support of html5 elements and media queries -->
  <!-- warning: respond.js doesn't work if you view the page via file:// -->
  <!--[if lt ie 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<g:layoutBody/>
%{--<div class="footer" role="contentinfo"></div>--}%
<asset:javascript src="application.js"/>
</body>
</html>
