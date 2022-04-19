#!/bin/bash
awk 'NF && !seen[$0]++'
