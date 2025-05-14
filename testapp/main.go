package main

import (
	"log/slog"
	"time"
)

func main() {
	slog.Info("startup")
	for {
		slog.Info("hello", slog.String("time", time.Now().Format(time.RFC3339)))
		time.Sleep(time.Second)
	}
}
