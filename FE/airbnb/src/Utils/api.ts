const baseURL: string = "http://localhost:3001/";

const getAPI = {
  main: () => fetch(`${baseURL}main`),
};

export { getAPI };
