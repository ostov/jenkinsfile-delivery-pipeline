#!/usr/bin/env bash

cat >> target/test-results/test/TEST-${TEST_NAME}.xml << EOF
<testsuite tests="3">
    <testcase classname="${TEST_NAME}-1" name="ASuccessfulTest"/>
    <testcase classname="${TEST_NAME}-2" name="AnotherSuccessfulTest"/>
    <testcase classname="${TEST_NAME}-3" name="AFailingTest">
    <failure type="NotEnough${TEST_NAME}"> details about failure </failure>
    </testcase>
</testsuite>
EOF
