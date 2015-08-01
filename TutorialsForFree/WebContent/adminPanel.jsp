<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<!--setting data source-->
<sql:setDataSource var="dataSource" dataSource="jdbc/tutorial_learnit" />

<head>
<meta charset="UTF-8">
<title>Learn for free</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/styleAdmin.css">
<script src="js/prefixfree.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"> Brand </a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<form class="navbar-form navbar-left" method="GET" role="search">
					<div class="form-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" target="_blank">Visit Site</a></li>
					<li class="dropdown "><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">
							Account <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">SETTINGS</li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class=""><a href="#">Other Link</a></li>
							<li class="divider"></li>
							<li><a href="#">Logout</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="container-fluid main-container">
		<div class="col-md-2 sidebar">
			<ul class="nav nav-pills nav-stacked">
				<li class="active" id="home"><a href="#">Home</a></li>
				<li><a href="#" id="new-topic">Create new topic</a></li>
				<li><a href="#" id="new-sub-topic">Create new subtopic</a></li>
				<li><a href="#" id="edit-content">edit</a></li>
			</ul>
		</div>
		<div class="col-md-10 content">
			<div class="panel panel-default">
				<div class="panel-heading">Dashboard</div>

				<div class="margin">
					<div class="container-fluid">
						<div class="jumbotron" id="home-text">
							<p>Hello Admin , you can create new content here</p>
						</div>
						<div id="create-from-scratch">
							<form class="form-horizontal" id="new-topic-form" role="form"
								method="post">
								<div class="form-group">
									<label for="topic">Topic:</label> <input type="text"
										class="form-control" id="topic-name" name="tname">
								</div>
								<!-- form group create content (topic) -->
								<div class="form-group">
									<label for="subtopic">Sub-topic:</label> <input type="text"
										class="form-control" id="sub-topic-name" name="stname">
								</div>
								<!-- form group create content (sub-topic) -->
								<div class="form-group">
									<label for="content">Content:</label>
									<textarea class="form-control" rows="8" maxlength="1500"
										id="content" name="ctname"></textarea>
								</div>
								<p>
									<input type="submit" value="submit"
										class="btn btn-block btn-success" id="submit1" />
								</p>
							</form>
							<!-- main form create from scratch -->
						</div>
						<!-- toggle create from scratch  -->

						<c:if test="${pageContext.request.method=='POST'}">
							<c:catch var="exception">
								<sql:transaction dataSource="${dataSource}">
									<sql:update var="updatedTable1">                                
									
									INSERT INTO learnit_content (tutorial_content,tutorial_subheading) VALUES (?, ?)   
                                    <sql:param value="${param.ctname}" />
										<sql:param value="${param.stname}" />

									</sql:update>

									<sql:update var="updatedTable2">
                                
									INSERT INTO tutorial_index(tutorial_name,tutorial_subheading) VALUES (?, ?)   
                                    <sql:param value="${param.tname}" />
										<sql:param value="${param.stname}" />

									</sql:update>
								</sql:transaction>
								<c:if test="${updatedTable1>=1&&updatedTable2>=1}">
									<div id="messageNewTopic" class="modal fade" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Modal Header</h4>
												</div>
												<div class="modal-body">

													<font size="5" color='green'> Congratulations ! Data
														inserted successfully.</font>

												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>

										</div>
									</div>
								</c:if>


							</c:catch>
							<c:if test="${exception!=null}">
								<c:out value="Unable to insert data in database." />
							</c:if>
						</c:if>


						<div id="create-new-sub-topic">
							<form class="form-horizontal" id="new-sub-topic-form" role="form">
								<div class="form-group">
									<label for="sel1">Select list:</label> <select
										class="form-control" id="sel1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
								<!-- form group create content (topic) -->
								<div class="form-group">
									<label for="subtopic">Sub-topic:</label> <input type="text"
										class="form-control" id="sub-topic-name">
								</div>
								<!-- form group create content (sub-topic) -->
								<div class="form-group">
									<label for="content">Content:</label>
									<textarea class="form-control" rows="8" maxlength="1500"
										id="content"></textarea>
								</div>
							</form>
							<!-- main form create sub topic -->
						</div>
						<!-- create subtopic toggle div -->
						<div id="edit-all">
							<form class="form-horizontal" id="edit-content-form" role="form">
								<div class="form-group">
									<label for="sel1">Select list:</label> <select
										class="form-control" id="sel1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
								<!-- form group create content (topic) -->
								<div class="form-group">
									<label for="sel1">Select list:</label> <select
										class="form-control" id="sel1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
								<!-- form group create content (sub-topic) -->
								<div class="form-group">
									<label for="content">Content:</label>
									<textarea class="form-control" rows="8" maxlength="1500"
										id="content"></textarea>
								</div>
							</form>
							<!-- main form edit -->
						</div>
						<!-- toggle edit div -->
					</div>
					<!-- container-fluid -->
				</div>
				<!-- margin   -->
			</div>
			<!-- panel default -->
		</div>
		<!--column 10-->
	</div>
	<!-- container fluid -->



	<footer class="pull-left footer">
		<hr class="divider">
		<p class="col-md-12">
			Copyright &COPY; 2015 <a href="#">Empty</a>
		</p>
	</footer>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/myscript.js"></script>
</body>
</html>