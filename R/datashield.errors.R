#' datashield.errors
#'
#' Retrieve and display the last errors occurred in a DataSHIELD session.
#'
#' @return NULL if no errors are found, otherwise a list containing the errors for each server.
#' @export
datashield.errors <- function() {
  on.exit(.inform_once(.new_errors_message(), "error_id"))
  env <- getOption("datashield.env", globalenv())
  if (exists(".datashield.last_errors", envir = env)) {
    get(".datashield.last_errors", envir = env)
  } else {
    NULL
  }
}

#' Create message informing of new functionality
#'
#' This function generates a message that informs the user about the 
#' updated behavior regarding the automatic printing of DataSHIELD errors.
#' It also instructs users on how to disable automatic error printing by setting 
#' the `datashield.errors.print` option to `FALSE`.
#' @return A named character vector containing the error message. The names of 
#' the elements are "i" and ">" for informational and instructional parts 
#' of the message, respectively.
#' @examples
#' # Generate a new errors message
#' .new_errors_message()
#' @noRd
.new_errors_message <- function() {
  msg <- c(
    "Errors can now be automatically printed, rather than requiring a call to 
    datashield.errors().",
    "To enable this behavior, run \033[1m\033[33moptions(datashield.errors.print = TRUE)\033[39m"
  )
  names(msg) <- c("i", "i")
  return(msg)
}

inform_env <- new.env()
#' Display Informational Messages Once Per Session
#'
#' This function ensures that an informational message is displayed only once 
#' per session. It uses an internal environment to track which messages have 
#' been shown. 
#'
#' @param msg A character vector containing the message to display. It is passed 
#' to `cli_bullets()` for formatted output.
#' @param id A unique identifier for the message. Defaults to the message text 
#' itself. This identifier is used to track whether the message has been 
#' displayed.
#' @return The function returns `NULL` invisibly if the message has already been 
#' shown. Otherwise, it prints the message and marks it as displayed.
#' @importFrom cli cli_bullets cli_inform
#' @noRd
.inform_once <- function(msg, id = msg) {
  if (exists(id, envir = inform_env, inherits = FALSE)) {
    return(invisible(NULL))
  }
  inform_env[[id]] <- TRUE
  cli::cli_bullets(msg)
  cli::cli_inform(cli::col_silver("This message is displayed once per session."))
  cat("\n")
}
