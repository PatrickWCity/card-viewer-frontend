import Strapi from 'strapi-sdk-javascript/build/main'
const apiUrl = process.env.API_URL || 'http://localhost:1337'
const strapi = new Strapi(apiUrl)

export const state = () => ({
  cards: []
})

export const getters = {
  countCards: (state) => state.cards.length,
  getCardById: (state) => (id) => state.cards.find((card) => card.id === id),
  getSomeCardById: (state) => (slug) =>
    state.cards.some((card) => card.slug === slug),
  getCardBySlug: (state) => (slug) =>
    state.cards.find((card) => card.slug === slug)
}

export const mutations = {
  SETCARDS(state, data) {
    state.cards = data
  }
}

export const actions = {
  async getAllCards({ commit }) {
    const response = await strapi.request('post', '/graphql', {
      data: {
        query: `query {
                cards {
                  id
                  name
                  description
                  team {
                    name
                  }
                  illustrator {
                    firstName
                    lastName
                  }
                  terrains {
                    name
                  }
                  modabilities {
                    name
                  }
                  type {
                    name
                  }
                }
              }
          `
      }
    })
    const data = []
    response.data.cards.forEach((card) => {
      data.push({
        id: card.id,
        ...card
      })
    })
    commit('SETCARDS', data)
  }
}
