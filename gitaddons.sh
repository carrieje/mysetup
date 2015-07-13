#!/bin/bash

function git() {
    case $* in
        root* ) shift 1; command cd $(git rev-parse --show-toplevel) "$@" && : | more ;;
        * )     command git "$@" ;;
    esac
}
