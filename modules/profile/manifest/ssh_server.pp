class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAU+WA0PzdDXyG7//3wY6aNZw3NxUV/b/0iv4Os67L4rG0tz7vJ8nxzRYx8O7g8EdlsBHeBjtak0w8AGL+lwu23sEHZckZGqdZQEmyr+NxnPsJNSeR59+pSPbCqTuTwxE0JOLXu6rsRPmxT2VXdNMDD4HdXiDi/QSbjghuCsPNjY6dYjJDQ/jmrz11C5654ved7Oy0ubsL9+ZAdkXesFHmTRMAT8WWRSjFKsEt50DY9oMHSUICKv8UzEAT470pYXcM0EojS8bwosv3zu9/2J9p1/yLLo4Ik1uFCQyIRMbFVBpxaxzWNDQ+RXSxMOSWcJ9PABEQRHfB6hH8b6zk1XUn',
        }
}
