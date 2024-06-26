% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsRestoreWorkspace}
\alias{dsRestoreWorkspace}
\title{Restore a saved DataSHIELD R session (a workspace) into the current DataSHIELD R session}
\usage{
dsRestoreWorkspace(conn, name)
}
\arguments{
\item{conn}{An object that inherits from \code{\link{DSConnection-class}}.}

\item{name}{Name of the workspace}
}
\description{
Restore a saved DataSHIELD R session from the remote data repository. When restoring a workspace, 
any existing symbol or file with same name will be overridden.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsListWorkspaces(con)
dsRestoreWorkspace(con, "foo")
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
\code{\link{dsRmSymbol}()},
\code{\link{dsRmWorkspace}()},
\code{\link{dsSaveWorkspace}()}
}
\concept{DSConnection generics}
