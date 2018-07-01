package com.javapointers.controllers;

import junit.framework.TestCase;

public class HomeControllerTest extends TestCase {

    public void testViewHome() throws Exception {
        assertEquals("home", new HomeController().viewHome());
    }

}