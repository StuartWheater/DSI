% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DSConnection.R
\name{dsAssignTable}
\alias{dsAssignTable}
\title{Assign a data table}
\usage{
dsAssignTable(
  conn,
  symbol,
  table,
  variables = NULL,
  missings = FALSE,
  identifiers = NULL,
  id.name = NULL,
  async = TRUE
)
}
\arguments{
\item{conn}{An object that inherits from \code{\link{DSConnection-class}}.}

\item{symbol}{Name of the R symbol.}

\item{table}{Fully qualified name of a table in the data repository.}

\item{variables}{List of variable names or Javascript expression that selects the variables of
a table. See javascript documentation:
\url{http://opaldoc.obiba.org/en/latest/magma-user-guide/variable/}}

\item{missings}{If TRUE, missing values will be pushed from data repository to R, default is FALSE.}

\item{identifiers}{Name of the identifiers mapping to use when assigning entities to R (if supported
by the data repository).}

\item{id.name}{Name of the column that will contain the entity identifiers. If not specified, the identifiers
will be the data frame row names. When specified this column can be used to perform joins between data frames.}

\item{async}{Whether the result of the call should be retrieved asynchronously. When TRUE (default) the calls are parallelized over
the connections, when the connection supports that feature, with an extra overhead of requests.}
}
\description{
Assign a data table from the data repository to a symbol in the DataSHIELD R session.
The table to be assigned must exist (i.e. proper permissions apply) for the DataSHIELD user.
}
\examples{
\dontrun{
con <- dsConnect(DSOpal::Opal(), "server1",
  username = "dsuser", password = "password", url = "https://opal-demo.obiba.org")
dsAssignTable(con, "D", "test.CNSIM")
dsDisconnect(con)
}
}
\seealso{
Other DSConnection generics: 
\code{\link{DSConnection-class}},
\code{\link{dsAggregate}()},
\code{\link{dsAssignExpr}()},
\code{\link{dsAssignResource}()},
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
