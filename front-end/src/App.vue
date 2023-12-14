<script setup>
import router from "@/router";

</script>

<template>
  <el-container v-cloak>
    <el-header style="justify-content: center; padding-top: 40px" >
      <div class="mfh-machine-profile" v-cloak>
        <ul class="nav nav-tabs justify-content-center" id="myTab1" role="tablist" v-cloak>
          <li class="nav-item">
            <a v-if="router.currentRoute.value.path==='/zao'" class="nav-link active" id="home-tab1" data-toggle="tab" href="#" role="tab" aria-controls="home" aria-selected="true">枣园</a>
            <a v-else class="nav-link" id="home-tab1" href="/zao" role="tab" aria-controls="home" aria-selected="true">枣园</a>
          </li>
          <li class="nav-item">
            <a v-if="router.currentRoute.value.path==='/liu'" class="nav-link active" id="profile-tab20" data-toggle="tab" href="#" role="tab" aria-controls="profile" aria-selected="false">榴园</a>
            <a v-else class="nav-link" id="profile-tab20"  href="/liu" role="tab" aria-controls="profile" aria-selected="false">榴园</a>
          </li>
        </ul>

      </div>
    </el-header>
    <el-main >
      <router-view v-if="router.currentRoute.value.path==='/liu' || router.currentRoute.value.path==='/zao' "/>
    </el-main>
  </el-container>

</template>

<style>

</style>