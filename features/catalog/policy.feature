Feature: General policy for all catalogs
  In order to ensure applicability of a host's catalog
  As a manifest developer
  I want a catalog apply to a real node

  Scenario Outline: Compile and verify catalog for r4
    Given a node specified by "features/yaml/r4.osinka.int.yaml"
    Given I use storeconfigs
    When I compile its catalog
    Then compilation should succeed
    And all resource dependencies should resolve

    Examples:
      | hostname  | operatingsystem | kernel | is_virtual | domain        |
      | r4        | Debian          | Linux  | false      | osinka.int |
