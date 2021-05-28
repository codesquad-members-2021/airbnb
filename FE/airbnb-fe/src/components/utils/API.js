const END_POINT = 'http://3.35.226.74';

const API = {
  get: {
    home: async () => handleFetch(`${END_POINT}/suggestions`),
    room: async () => handleFetch(`${END_POINT}/airbnb`),
  },
};

const handleFetch = async (...param) => {
  const fetchData = await (await fetch(...param)).json();
  if (fetchData.statusCode >= 400 || fetchData.body === null)
    throw { status: 'fail' };
  return fetchData;
};
export default API;
