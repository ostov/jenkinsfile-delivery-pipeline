#!/usr/bin/env bash

cat >> target/test-results/test/TEST-$1.xml << EOF
<testsuite tests="3">
    <testcase classname="$1-1" name="ASuccessfulTest"/>
    <testcase classname="$1-2" name="AnotherSuccessfulTest"/>
    <testcase classname="$1-3" name="AFailingTest">
    <failure type="NotEnough$1"> details about failure </failure>
    </testcase>
</testsuite>
EOF
