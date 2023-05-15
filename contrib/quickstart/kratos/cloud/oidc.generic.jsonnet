local claims = std.extVar('claims');
{
  identity: {
    traits: {
      name:{
        first: claims.given_name,
        last: claims.family_name
      }
    },
  },
}
