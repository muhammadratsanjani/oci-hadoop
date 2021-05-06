# ---------------------------------------------------------------------------------------------------------------------
# SSH Keys - Put this to top level because they are required
# ---------------------------------------------------------------------------------------------------------------------

variable "ssh_provided_key" {
  default = ""
}

# ---------------------------------------------------------------------------------------------------------------------
# Network Settings
# --------------------------------------------------------------------------------------------------------------------- 
variable "useExistingVcn" {
  default = "false"
}

variable "custom_cidrs" {
  default = "false"
}

variable "VCN_CIDR" {
  default = "10.0.0.0/16"
}

variable "public_cidr" {
  default = "10.0.2.0/24"
}

variable "private_cidr" {
  default = "10.0.3.0/24"
}

variable "blockvolume_cidr" {
  default = "10.0.4.0/24"
}

variable "myVcn" {
  default = " "
}

variable "privateSubnet" {
  default = " "
}

variable "publicSubnet" {
  default = " "
}

variable "blockvolumeSubnet" {
  default = " "
}

variable "vcn_dns_label" { 
  default = "hadoopvcn"
}

variable "secondary_vnic_count" {
  default = "0"
}

variable "blockvolume_subnet_id" {
  default = " "
}

variable "worker_domain" {
  default = " "
}

# ---------------------------------------------------------------------------------------------------------------------
# ORM Schema variables
# You should modify these based on deployment requirements.
# These default to recommended values
# --------------------------------------------------------------------------------------------------------------------- 

variable "enable_block_volumes" {
  default = "true"
}

variable "provide_ssh_key" {
  default = "true"
}

variable "enable_secondary_vnic" {
  default = "false"
}

variable "dynamic_ocpus" {
  default = "0"
}

variable "master_dynamic_ocpus" {
  default = "0"
}

variable "edge_dynamic_ocpus" {
  default = "0"
}
# ---------------------------------------------------------------------------------------------------------------------
# Hadoop variables
# You should modify these based on deployment requirements.
# These default to recommended minimum values in most cases
# ---------------------------------------------------------------------------------------------------------------------

variable "hadoop_version" { 
    default = "3.3.0" 
}

variable "worker_instance_shape" {
  default = "VM.Standard2.8"
}

# This should not increment.
variable "worker_node_count" {
  default = "1"
}

# Increment module count to scale workers or suffer from btree delays during deployment
variable "worker_module_count" {
  default = "3"
}

variable "hdfs_blocksize_in_gbs" {
  default = "1000"
}

variable "block_volumes_per_worker" {
   default = "3"
}

variable "customize_block_volume_performance" {
   default = "false"
}

variable "block_volume_high_performance" {
   default = "false"
}

variable "block_volume_cost_savings" {
   default = "false"
}

variable "vpus_per_gb" {
   default = "10"
}

variable "edge_instance_shape" {
  default = "VM.Standard2.4"
}

variable "master_instance_shape" {
  default = "VM.Standard2.8"
}

variable "master_node_count" {
  default = "3"
}

# Size for NameNode and SecondaryNameNode data volume (Journal Data)

variable "nn_volume_size_in_gbs" {
  default = "500"
}

# Which AD to target - this can be adjusted.  Default 1 for single AD regions.
variable "availability_domain" {
  default = "1"
}

variable "cluster_name" {
  default = "TestCluster"
}

variable "UsePrefix" {
  default = "true"
}


# ---------------------------------------------------------------------------------------------------------------------
# Environmental variables
# You probably want to define these as environmental variables.
# Instructions on that are here: https://github.com/oracle/oci-quickstart-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

variable "compartment_ocid" {}

# Required by the OCI Provider

variable "tenancy_ocid" {}
variable "region" {}

# ---------------------------------------------------------------------------------------------------------------------
# Constants
# You probably don't need to change these.
# ---------------------------------------------------------------------------------------------------------------------

// See https://docs.oracle.com/en-us/iaas/images/image/3318ef81-3970-4d69-92bc-e91392f87a13/
// Oracle-provided image "Oracle-Linux-7.9-2020.11.10-1"
// Kernel Version: 5.4.17-2036.100.6.1.el7uek.x86_64
// Release Date: Nov. 13, 2020
variable "OELImageOCID" {
  type = map
  default = {
    ap-chuncheon-1 = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaaelfp7gtaodq3w6sq3s3dqwtgr7b2ofo6z5tkh6nsp6622xopmeja"
    ap-hyderabad-1 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaav7gmok247t2jngmtyahgcktphcj5gin7bpyc2fjg3bzho47ws7ea"
    ap-melbourne-1 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaausio3ssmcxawnqwzyolpbvakwt7jsdps7o4edzxhs4gol5kd2d4a"
    ap-mumbai-1 = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaazw753qijtnuynq6wrd3rmiayquc3kpijc7j5akprmvyzhcdhxsxq"
    ap-osaka-1 = "ocid1.image.oc1.ap-osaka-1.aaaaaaaahfv5tiogcrhesqedn7bfp2bm65eszn47bv6fgsepenscf2bz4bga"
    ap-seoul-1 = "ocid1.image.oc1.ap-seoul-1.aaaaaaaa5df7nz7fgtiqfbnx2fyefgsqvr5z7me4g2snwwmhgiwxgs5iozsq"
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaa47h6zbuz3glgprnlftbzaq47b2egblcqzllshzjvotfgj7oyfnya"
    ap-tokyo-1 = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaazgoy6klsxzbi5jh5kx2qwxw6l6mqtlbo4c4kak4zes7zwytd4z2q"
    ca-montreal-1 = "ocid1.image.oc1.ca-montreal-1.aaaaaaaaom7gj5nbeedakcg5ivoli2t6634o3ymyyf3sdikatskfwt4bfzja"
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaadsv6are52igmc63fe7xkdtj22uqqzibkps6ukhupac6dwuiqby4a"
    eu-amsterdam-1 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaahxjr3fbnv62kt5pvsblj5u7t3tfoa5bga4rv6nbapafen4ft4bua"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaf6gm7xvn7rhll36kwlotl4chm25ykgsje7zt2b4w6gae4yqfdfwa"
    eu-zurich-1 = "ocid1.image.oc1.eu-zurich-1.aaaaaaaaddo5ksklg5ctvwhkncxv675ah3a5n7r7hti234ty46jt7o4i5owq"
    me-dubai-1 = "ocid1.image.oc1.me-dubai-1.aaaaaaaapjwkms5kb637ddq7ew5tjflxtgyyxted2zvzn7klnid77mjtiowa"
    me-jeddah-1 = "ocid1.image.oc1.me-jeddah-1.aaaaaaaamaasqxfymhi3ppcqn4onqjiu7wpz4gjbeem4ww3mtfq3zflruzya"
    sa-saopaulo-1 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa7inha53kcyutiqdbz3w4gvms2ab5z3bc624loheugh7fbvg4wada"
    uk-cardiff-1 = "ocid1.image.oc1.uk-cardiff-1.aaaaaaaakiyy4e47557phn4cymjgmaauodty7imys47vrzvdzyhci4stgm7q"
    uk-london-1 = "ocid1.image.oc1.uk-london-1.aaaaaaaai2rckqhxpvhjb6vtxdgzga3nomcqb3rl54o7wdotnof2qm2ek55a"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaaf2wxqc6ee5axabpbandk6ji27oyxyicatqw5iwkrk76kecqrrdyq"
    us-gov-ashburn-1 = "ocid1.image.oc3.us-gov-ashburn-1.aaaaaaaadqzao57flqwkih4uoocghkgwp7qelrgj5vyih4ptuuah3alkgsta"
    us-gov-chicago-1 = "ocid1.image.oc3.us-gov-chicago-1.aaaaaaaanploag6l4h653ct2r4xvqn2xwfntsjuzhmypbqpqqfuyf43qo2va"
    us-gov-phoenix-1 = "ocid1.image.oc3.us-gov-phoenix-1.aaaaaaaablheqkh4k2mo4l5wfnpg2t5zuokmgai5cex6kell4epiio5yi6lq"
    us-langley-1 = "ocid1.image.oc2.us-langley-1.aaaaaaaan444pc2rvauh4xsi47g3bffub5ow4o7uz72yxc7sb5dbobrg4yia"
    us-luke-1 = "ocid1.image.oc2.us-luke-1.aaaaaaaa7sffhf7uouur6t6amby4nuntt3r76f3z4i4jg3z6dm7m5oe4n4xq"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaaxdnx3den32vwplngpeu44zakw7lxup7vcdd3jmke4pfleaug3m6q"
    us-sanjose-1 = "ocid1.image.oc1.us-sanjose-1.aaaaaaaaunhdpihc57bc6dzipgwvhr2ouoxw65tgabx6pwgmk5qqpjtzm5oq"
  }
}

