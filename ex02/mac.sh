#!/bin/bash

ifconfig | grep "ethe" | awk '{print $2}'
