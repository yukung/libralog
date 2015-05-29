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

<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
  <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<header class="navbar navbar-default navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Libralog</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li class="active"><a href="${createLink(uri: '/book/index')}">蔵書一覧</a></li>
        <li class="disabled"><a href="#track">読書記録</a></li>
      </ul>
      %{--<ul class="nav navbar-nav navbar-right">--}%
        %{--<li class="dropdown">--}%
          %{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">username <span class="caret"></span></a>--}%
          %{--<ul class="dropdown-menu" role="menu">--}%
            %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>--}%
            %{--<li><a href="#">設定</a></li>--}%
            %{--<li><a href="#">ログアウト</a></li>--}%
          %{--</ul>--}%
        %{--</li>--}%
      %{--</ul>--}%
    </div>
  </div>
</header>
<div class="container">
  <nav class="row">
    <div class="col-md-6">
      <ul class="nav nav-tabs">
        <li class="disabled">
          <a href="#" data-toggle="tab" aria-expanded="false">本棚</a>
        </li>
        <li class="active">
          <a href="#" data-toggle="tab" aria-expanded="true">リスト</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="row">
    <div class="col-md-12">
      <div class="page-header">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
      </div>
    </div>
  </div>
  <g:if test="${flash.message}">
    <div class="row">
      <div class="col-md-12">
        <div class="alert alert-info" role="alert">${flash.message}</div>
      </div>
    </div>
  </g:if>
  <div class="row">
    <div class="col-md-5 col-md-offset-7">
      <div class="panel panel-default">
        <div class="panel-body">
          <g:form action="search">
            <div class="input-group">
              <g:textField name="title" class="form-control" placeholder="本のタイトルを入力"/>
              <span class="input-group-btn">
                <g:submitButton name="search" value="Search" class="btn btn-default"></g:submitButton>
              </span>
            </div>
          </g:form>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="text-right">全 ${bookCount} 冊</div>
        </div>
        <div class="panel-body">
          <f:table collection="${bookList}"/>
        </div>
        <div class="panel-footer">
          <div class="text-center">
            <div class="pagination">
              <g:paginate total="${bookCount ?: 0}"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
