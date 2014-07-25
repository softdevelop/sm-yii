<?php 
class SiteControllerTest extends CTestCase {

    public function setUp() {
        $this->api = new SiteController(rand());
    }

    public function tearDown() {
        unset($this->api);
    }
}