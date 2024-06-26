% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsHasTable}
\alias{dsHasTable}
\title{Check remote table exists}
\usage{
dsHasTable(conn, table)
}
\arguments{
\item{conn}{An object that inherits from \code{\link{DSConnection-class}}.}

\item{table}{the table fully qualified name}
}
\description{
Check if a remote table exists in the data repository. Returns a logical indicating the existence of a
remote table accessible through this connection.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsHasTable(con, "test.CNSIM")
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
\code{\link{dsRmWorkspace}()},
\code{\link{dsSaveWorkspace}()}
}
\concept{DSConnection generics}
