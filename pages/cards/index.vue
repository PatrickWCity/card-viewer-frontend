<template>
  <section class="p-3" style="margin-bottom: 176px">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><nuxt-link to="/">Inicio</nuxt-link></li>
        <li class="breadcrumb-item active" aria-current="page">Categorías</li>
      </ol>
    </nav>
    <div class="row">
      <SideCategoryList />
      <div class="col">
        <h4 class="mb-4">Listado de Categorías</h4>
        <div class="row">
          <div
            v-for="item in cards"
            :key="item.id"
            class="col-12 col-md-6 col-lg-4 col-xl-3"
          >
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">
                  <nuxt-link :to="`/cards/${item.slug}`">
                    {{ item.nombre }}
                  </nuxt-link>
                </h4>
                <p class="card-text">{{ item.descripcion }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { mapState, mapGetters, mapActions } from 'vuex'
export default {
  data() {
    return {
      title: 'Listado de Categorías'
    }
  },
  computed: {
    ...mapState('cards', ['cards']),
    ...mapGetters('cards', ['countCards'])
  },
  head() {
    return {
      title: this.title,
      meta: [
        { hid: 'og:title', name: 'og:title', content: 'My custom description' },
        {
          hid: 'og:description',
          name: 'og:description',
          content: 'My custom description'
        },
        { hid: 'og:image', name: 'og:image', content: 'My custom description' },
        { hid: 'og:url', name: 'og:url', content: 'My custom description' },
        {
          hid: 'description',
          name: 'description',
          content: 'My custom description'
        }
      ]
    }
  },
  created() {
    if (this.countCards === 0) {
      this.getAllCards()
    }
  },
  methods: {
    ...mapActions('cards', ['getAllCards'])
  }
}
</script>