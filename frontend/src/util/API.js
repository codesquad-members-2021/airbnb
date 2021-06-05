// const END_POINT = "http://airbnb.pyro-squad.com/";
//'http://localhost:8080/api/auth'
const END_POINT = "http://localhost:8080";
const API = {
    get: {
        room: async () => {
            const response = await fetch(`${END_POINT}/api/rooms?checkIn=2021-06-10&checkOut=2021-06-11&priceMax=10000&priceMin=100000`)
            .then(res => res.json())
            return response;
        },
        graph: async () => {
            const response = await fetch(`${END_POINT}/api/graph`)
            .then(res => res.json())
            return response;
        }
    },
 
    post:{
        code: async (code) => {
            const token = await fetch(`${END_POINT}/api/auth`, {
                method: "POST",
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify({ code })
            })
            .then(response => response.json())
            .then(({token}) => token);
            return token;
        },
        token: async () => {
            const response = await fetch(`${END_POINT}/api/auth`, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${localStorage.getItem("token")}`,
                }
            })
            return response;
        }
    }
}

export default API;