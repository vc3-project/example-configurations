#! /bin/bash

# $1 =lobster_master. Default = "lobster_khurtado_mc_v5"
lobster_master=${1:-lobster_khurtado_mc_v5}

# $2 = number of jobs to submit. Default: 20
njobs=${2:-20}

# For lobster, we want to use our own version of cctools
CCTOOLS_LOBSTER=$PWD/lobster-148-c1a7ecbd-cvmfs-0941e442

# Add cctools lobster version
if [ -n "${PATH##*${CCTOOLS_LOBSTER}*}" ]; then
  export PATH="${CCTOOLS_LOBSTER}/bin:$PATH"
fi
if [ -n "${PYTHONPATH##*${CCTOOLS_LOBSTER}*}" ]; then
  export PYTHONPATH="${CCTOOLS_LOBSTER}/lib/python2.6/site-packages:$PYTHONPATH"
fi

# Set proxy
# TODO:
# We should be able to set this in vc3-request
export GLIDEIN_Proxy_URL=http://cmsbproxy.fnal.gov:3128

# WQ Factory doesn't work because it has issues with --disk=$$[(TARGET.Disk/1024)]
#nohup work_queue_factory -T condor -M "${lobster_master}" -dall -o wq.debug -C workers.conf > factory.log &

./condor_submit_workers_vc3 -M "${lobster_master}" --cores 1 --memory 2000 --disk all ${njobs}
