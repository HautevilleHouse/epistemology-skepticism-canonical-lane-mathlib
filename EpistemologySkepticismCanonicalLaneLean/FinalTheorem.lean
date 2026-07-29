import EpistemologySkepticismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

def ConstrainedSkepticismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_skepticism_endgame (A : AdmissibleClass) :
    ConstrainedSkepticismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse