package com.codesquad.coco.utils;

public class CalcUtil {

    private CalcUtil() {
    }

    public static int percentCalc(int target, int percent) {
        return (int) (target * (percent / 100.0));
    }

}
