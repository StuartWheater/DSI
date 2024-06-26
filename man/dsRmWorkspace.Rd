% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsRmWorkspace}
\alias{dsRmWorkspace}
\title{Remove a DataSHIELD workspace}
\usage{
dsRmWorkspace(conn, name)
}
\arguments{
\item{conn}{An object that inherits from \code{\link{DSConnection-class}}.}

\item{name}{Name of the workspace}
}
\description{
Remove a DataSHIELD workspace from the remote data repository. Ignore if no
such workspace exists.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsSaveWorkspace(con, "foo")
dsListWorkspaces(con)
dsRmWorkspace(con, "foo")
dsListWorkspaces(con)
dsDisconnect(con)
}
}
\seealso{
Other DSConnection generics: 
\code{\link{DSConnection-class}},
\code{\link{dsAggregate}()},
\code{\link{dsAssignExpr}()},
\code{\link{dsAssignResource}()},
\code{\link{dsAssignTable}()},
\code{\link{dsDisconnect}()},
\code{\link{dsGetInfo}()},
\code{\link{dsHasResource}()},
\code{\link{dsHasTable}()},
\code{\link{dsIsAsync}()},
\code{\link{dsKeepAlive}()},
\code{\link{dsListMethods}()},
\code{\link{dsListPackages}()},
\code{\link{dsListProfiles}()},
\code{\link{dsListResources}()},
\code{\link{dsListSymbols}()},
\code{\link{dsListTables}()},
\code{\link{dsListWorkspaces}()},
\code{\link{dsRestoreWorkspace}()},
\code{\link{dsRmSymbol}()},
\code{\link{dsSaveWorkspace}()}
}
\concept{DSConnection generics}
