% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{run_game}
\alias{run_game}
\title{Run mine sweeper game}
\usage{
run_game(
  n_mine = max(round(0.2 * n_row * n_col), 1L),
  n_row = 10L,
  n_col = 10L,
  unmask_button = 0L,
  flag_button = 2L,
  digit_char = format(seq_len(8L), scientific = FALSE),
  mine_char = "M",
  flag_char = "F",
  unmask_color = "#9F9F9F",
  mask_color = "#3F3F3F",
  hit_color = "#9F3F3F",
  wrong_color = "#7F1F7F",
  digit_color = pals::cols25(n = 8L),
  mine_color = "black",
  flag_color = "white",
  window_title = "Mine Sweeper in R",
  x11_args = list(),
  time_prec = 3L,
  restart_key = "r",
  exit_key_press = 2L,
  debug = FALSE
)
}
\arguments{
\item{n_mine, n_row, n_col}{Integers as numbers of mines/rows/columns in game panel,
\code{0 < n_mines < n_row * n_col}.}

\item{unmask_button, flag_button}{Integers as buttons to unmask/flag tiles.
Usually, 0 for left mouse button (to unmask) and 2 for right mouse button (to flag).}

\item{digit_char, mine_char, flag_char}{Characters to mark counts/mines/flags.}

\item{unmask_color, mask_color, hit_color, wrong_color}{Strings as colors for
unmasked tiles / masked tiles / mine-triggering tile / wrongly flagged tiles.}

\item{digit_color, mine_color, flag_color}{Strings as colors for \code{digit_char}/
\code{mine_char}/\code{flag_char} on game panel.}

\item{window_title}{String as window title.}

\item{x11_args}{Named list of arguments passed on to \code{\link[grDevices]{x11}},
excluding \code{title}.}

\item{time_prec}{Integer as time precision (e.g. 0 for seconds or 3 for miliseconds).}

\item{restart_key}{Character as the key to restart game, used when you have won or lost a game.}

\item{exit_key_press}{Integer as the times of boss key presses (boss key is any key
other than \code{restart_key}) required to close game window. This may come in handy in emergency (:D).}

\item{debug}{Logical, internal use only.}
}
\value{
A \code{\link{data.frame}} containing game statistics, invisibly, where each row is a game play.
To look at game statistics, save the output of \code{run_game()} to a variable
for later use or run \code{print(run_grame)} to print.
}
\description{
\code{run_game} runs mine sweeper game. It opens a window through \code{\link[grDevices]{x11}}.
Please do not run multiple instances (windows) of the game. For game instructions, please check the details.
}
\details{
Game instructions:
\describe{
\item{Goal}{All tiles start masked. If you unmask all tiles without mines, you win the game;
if you unmask any tiles containing mines, you lose the game.}
\item{Unmask tiles}{You may click with \code{unmask_button} on any masked tile to unmask.
The first tile unmasked cannot contain a mine. Timing starts when any tile is unmasked.}
\item{Find out mines}{Each unmasked tile tells you the number of mines in adjacent tiles, unless itself contains a mine.
You may use these numbers to find out the adjacent tiles with mines.}
\item{Flag mines}{You may click with \code{flag_button} on an unmasked tile to flag it as a possible mine.
Flagged tiles cannot be unmasked, unless you click on them with \code{flag_button} again to remove the flags.}
\item{Unmask adjacent tiles}{You may click with \code{unmask_button} on any unmasked tile to unmask adjacent unflagged tiles,
after you have set up the number of flags that equals to the count of adjacent mines shown on this tile.
If any unflagged adjacent tiles contain mines, one of them is triggered and you lose the game.}
\item{Game statistics}{After you win or lose a game, game statistics are recorded.}
\item{Restart game}{You may restart game with \code{restart_key} at any time. If you have not won or lost the game,
it is not recorded in game statistics.}
\item{\strong{BOSS KEY!}}{You may press boss key (any key other than \code{restart_key}) for \eqn{\ge} \code{exit_key_press} times
to close game window.}
}
}
\note{
Change log:
\itemize{
\item{0.1.0 Xiurui Zhu - Initiate the function.}
}
}
\examples{
if (interactive() == TRUE) {
  run_game()
}
}
\author{
Xiurui Zhu
}
