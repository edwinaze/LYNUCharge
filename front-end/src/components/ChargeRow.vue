<script>
import Loading from "@/components/Loading.vue";

export default {
  components: {Loading},
  props:['name', 'devices', 'isLoaded'],
}

</script>

<template>
  <div class="row">
    <div class="col-xl">
      <div class="card">
        <div class="card-header pb-0">
          <h4 class="card-title">{{name}}</h4>
        </div>
        <div class="card-content">
          <div class="card-body">
            <div class="ad-Accordion4">
              <div class="accordion" id="accordionExample">

                <div class="item" v-for="device in devices">
                  <div class="item-header" id="headingOnej">
                    <h2 class="mb-0">
                      <button class="btn btn-link collapsed" :style="{backgroundColor: device.hasOffCharger ? '#4da64d':'#22223e'} " type="button" data-toggle="collapse" :data-target="'#e' + device.deviceId" aria-expanded="false" :aria-controls="device.deviceId">
                        {{ device.position }}  <i class='fa fa-angle-down'></i>
                      </button>
                    </h2>
                  </div>
                  <div :id="'e' + device.deviceId" class="collapse" aria-labelledby="headingOnej" data-parent="#accordionExample" style="">
                    <div class="card">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-xl-2 col-lg-6 col-md-6" style="max-width:none;width:auto" v-for="param in device.chargerList">
                            <div class="prooduct-details-box large-text" :style="[{backgroundColor: param.status ? '#4da64d' : '#001a00'}, {textAlign:'center'}, {color:'aliceblue'}]">
                              {{ param.channel }}
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <Loading v-if="!isLoaded"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>