<script>

import axios from"axios"
import ChargeRow from "@/components/ChargeRow.vue";

axios.defaults.baseURL = "http://120.26.65.225"

export default {
  components: [ChargeRow],
  data() {
    return {
      behindDepartment: [],
      dormitory: [],
      behindDepartmentName: '榴园信息技术学院后',
      dormitoryName: '榴园宿舍后',
      isLoaded: true
    }
  },
  methods: {
    async getAll() {
      try {
        const responses = await Promise.all([
          axios.get("/api/liu/behindDepartment"),
          axios.get("/api/liu/dormitory")
        ]);
        this.isLoaded  =false;
        this.behindDepartment = responses[0].data;
        this.dormitory = responses[1].data;
      } catch (error) {
        // 处理错误
        console.error("Error fetching data: ", error);
        this.isLoaded  =false;
      }
    }

  },
  created() {
    this.getAll()
  }
}

</script>

<template>
  <div class="page-wrapper" style="margin:0px 0 0 0 !important;">

    <!-- Container Start -->
    <div class="page-wrapper">
      <div class="main-content" style="margin:0 auto">
        <!-- Page Title Start -->
        <div class="row">
          <div class="col xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="page-title-wrapper">
              <div class="page-title-box">
                <h4 class="page-title">榴园：如果某个充电站存在可用电桩，其缩进栏颜色会是绿色</h4>
              </div>

            </div>
          </div>
        </div>
        <ChargeRow :devices="behindDepartment" :name="behindDepartmentName" :is-loaded="isLoaded"/>
        <ChargeRow :devices="dormitory" :name="dormitoryName" :is-loaded="isLoaded"/>
        <Footer/>
      </div>
    </div>
  </div>


</template>

<style scoped>

</style>