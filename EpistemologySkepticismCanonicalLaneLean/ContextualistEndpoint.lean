import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure ContextualistEndpointPackage where
  contextParameters : Type u
  knowledgeStandard : Type v
  skepticalResolution : Prop
  ordinaryKnowledgePreserved : Prop
  standardShift : Prop

structure ContextualistEndpointEvidence (C : ContextualistEndpointPackage) where
  skepticalResolutionClosed : C.skepticalResolution
  ordinaryKnowledgePreservedClosed : C.ordinaryKnowledgePreserved
  standardShiftClosed : C.standardShift

def ContextualistEndpointClosed (C : ContextualistEndpointPackage) : Prop :=
  C.skepticalResolution ∧ C.ordinaryKnowledgePreserved ∧ C.standardShift

theorem contextualist_endpoint_closed_from_evidence (C : ContextualistEndpointPackage)
    (E : ContextualistEndpointEvidence C) : ContextualistEndpointClosed C := by
  exact And.intro E.skepticalResolutionClosed
    (And.intro E.ordinaryKnowledgePreservedClosed E.standardShiftClosed)

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse