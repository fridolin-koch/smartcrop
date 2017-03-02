package smartcrop

import "log"

// The Logger interface
type Logger interface {
	Debugf(format string, args ...interface{})
	Printf(format string, args ...interface{})
}

type defaultLogger struct {
	Debug bool
}

func (l *defaultLogger) Debugf(format string, args ...interface{}) {
	if l.Debug {
		log.Printf(format, args...)
	}
}

func (l *defaultLogger) Printf(format string, args ...interface{}) {
	log.Printf(format, args...)
}