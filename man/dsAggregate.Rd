% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsAggregate}
\alias{dsAggregate}
\title{Aggregate data}
\usage{
dsAggregate(conn, expr, async = TRUE)
}
\arguments{
\item{conn}{An object that inherits from \code{\link{DSConnection-class}}.}

\item{expr}{Expression to evaluate.}

\item{async}{Whether the result of the call should be retrieved asynchronously. When TRUE (default) the calls are parallelized over
the connections, when the connection supports that feature, with an extra overhead of requests.}
}
\description{
Aggregate some data from the DataSHIELD R session using a valid R expression. The aggregation expression
must satisfy the data repository's DataSHIELD configuration.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsAssignTable(con, "D", "test.CNSIM")
dsAggregate(con, as.symbol("meanDS(D$WEIGHT)"))
dsDisconnect(con)
}
}
\seealso{
Other DSConnection generics: 
\code{\link{DSConnection-class}},
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
\code{\link{dsRmWorkspace}()},
\code{\link{dsSaveWorkspace}()}
}
\concept{DSConnection generics}
