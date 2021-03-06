Feature: Upgrade the firmware

    The Cat Tracker should have upgraded the firmware

    Scenario: The upgraded firmware should have been run

        Given the Firmware CI job "{jobId}" has completed
        Then the Firmware CI device log for job "{jobId}" should contain
        """
        aws_iot_integration.cloud_wrap_init:  Version:     {appVersion}-upgraded
        """