% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rzmq_wrapper.r
\name{Wrapper Functions for rzmq}
\alias{Wrapper Functions for rzmq}
\alias{bind.socket}
\alias{connect.socket}
\alias{init.context}
\alias{init.socket}
\alias{receive.socket}
\alias{send.socket}
\title{All Wrapper Functions for rzmq}
\usage{
send.socket(socket, data, send.more = FALSE, serialize = TRUE)

receive.socket(socket, unserialize = TRUE, dont.wait = FALSE)

init.context()

init.socket(context, socket.type)

bind.socket(socket, address)

connect.socket(socket, address)
}
\arguments{
\item{socket}{A ZMQ socket.}

\item{data}{An R object.}

\item{send.more}{Logical; will more messages be sent?}

\item{serialize,unserialize}{Logical; determines if serialize/unserialize should be called
on the sent/received data.}

\item{dont.wait}{Logical; determines if reception is blocking.}

\item{context}{A ZMQ context.}

\item{socket.type}{The type of ZMQ socket as a string, of the form "ZMQ_type".  Valid 'type'
values are PAIR, PUB, SUB, REQ, REP, DEALER, PULL, PUSH, XPUB, XSUB, and
STERAM.}

\item{address}{A valid address.  See details.}
}
\description{
Wrapper functions for backwards compatibility with rzmq.  See vignette
for examples.
}
\details{
\code{send.socket()}/\code{receive.socket()} send/receive messages over
a socket.  These are simple wrappers around \code{zmq.msg.send()} and
\code{zmq.msg.receive()}, respectively.

\code{init.context()} creates a new ZeroMQ context.  A useful wrapper
around \code{zmq.ctx.new()} which handles freeing memory for you, i.e.
\code{zmq.ctx.destroy()} will automatically be called for you.

\code{init.socket()} creates a ZeroMQ socket; serves as a high-level
binding for \code{zmq.socket()}, including handling freeing memory
automatically.  See also \code{.pbd_env$ZMQ.ST}.

\code{bind.socket()}:  see \code{zmq.bind()}.

\code{connect.socket()}:  see \code{zmq.connect()}
}
\author{
Wei-Chen Chen \email{wccsnow@gmail.com}.
}
\references{
ZeroMQ/4.1.0 API Reference:
\url{http://api.zeromq.org/4-1:_start}

Programming with Big Data in R Website: \url{http://r-pbd.org/}
}
\keyword{rzmq}

