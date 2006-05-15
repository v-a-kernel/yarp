// -*- mode:C++; tab-width:4; c-basic-offset:4; indent-tabs-mode:nil -*-
#ifndef _YARP2_TESTLIST_
#define _YARP2_TESTLIST_

#include <yarp/UnitTest.h>

namespace yarp {
    class TestList;
}

// need to made one function for each new test, and add to collectTests()
// method
extern yarp::UnitTest& getYARPImageTest();

class yarp::TestList {
public:
    static void collectTests() {
        UnitTest& root = UnitTest::getRoot();
        root.add(getYARPImageTest());
    }
};

#endif

