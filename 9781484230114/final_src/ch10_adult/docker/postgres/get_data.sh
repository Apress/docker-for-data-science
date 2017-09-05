#!/bin/bash
wget -P /tmp/ http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data
sed '/^\s*$/d' /tmp/adult.data > /tmp/adult-clean.csv
