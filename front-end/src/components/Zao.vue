<script>

import axios from"axios"
import ChargeRow from "@/components/ChargeRow.vue";

// axios.defaults.baseURL = "/api"

export default {
  components: [ChargeRow],
  data() {
    return {
      mid: [],
      backOne: [],
      backTwo: [],
      midName: '枣园中部',
      backOneName: '枣园北部（左边）',
      backTwoName: '枣园北部（右边）',
      midIsLoaded : false,
      backOneIsLoaded: false,
      backTwoIsLoaded: false
    }
  },
  methods: {
async getAll() {
      try {
        const responses = await Promise.all([
          axios.get("/api/zao/mid"),
          axios.get("/api/zao/backOne"),
            axios.get("/api/zao/backTwo")
        ]);
        this.mid = responses[0].data
        this.backOne = responses[1].data
        this.backTwo = responses[2].data
        this.midIsLoaded = true
        this.backOneIsLoaded= true
        this.backTwoIsLoaded= true
      } catch (error) {
        // 处理错误
        console.error("Error fetching data: ", error);
        this.midIsLoaded = false
        this.backOneIsLoaded= false
        this.backTwoIsLoaded= false
      } finally {
        console.log("请求获取结束")
        console.log(this.mid)
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
                <h4 class="page-title">枣园：如果某个充电站存在可用电桩，其缩进栏颜色会是绿色</h4>
              </div>

            </div>
          </div>
        </div>
        <ChargeRow :devices="mid" :name="midName" :isLoaded="midIsLoaded"/>
        <ChargeRow :devices="backOne" :name="backOneName" :isLoaded="backOneIsLoaded"/>
        <ChargeRow :devices="backTwo" :name="backTwoName" :isLoaded="backTwoIsLoaded"/>
        <Footer/>
      </div>
    </div>
  </div>


</template>

<style scoped>

</style>