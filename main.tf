provider "google" {
credentials = file ("gcp-practice-392604-396eb7215400.json")  
  project     = "gcp-practice-392604"  
  
}



resource "google_compute_instance" "us_compute" {
  name = "${var.compute1_name}"
  machine_type = "${var.machine_type}"
  zone = "${var.compute1_zone}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_compute_instance" "us_compute-2" {
  name = "${var.compute2_name}"
  machine_type = "${var.machine_type}"
  zone = "${var.compute2_zone}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}