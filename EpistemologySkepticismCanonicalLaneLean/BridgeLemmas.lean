import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.skepticalHypothesis ∨ A.object.knowledgeClaim

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse