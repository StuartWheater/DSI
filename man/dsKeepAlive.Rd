% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsKeepAlive}
\alias{dsKeepAlive}
\title{Keep a connection alive}
\usage{
dsKeepAlive(conn)
}
\arguments{
\item{conn}{An object inheriting from \code{\link{DSConnection-class}}.}
}
\description{
As the DataSHIELD sessions are working in parallel, this function helps at keeping
idle connections alive while others are working. Any communication failure must
be silently processed.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsKeepAlive(con)
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
