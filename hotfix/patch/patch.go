package patch

import (
	"fmt"
	"plugin"
)

type PatchInterface interface {
	Patch(soPath string) (any, error)
	Reset(any) error
}

type PatchTool struct {
	entry   PatchInterface
	patched any
}

func (p *PatchTool) DoPatch(path string) error {
	err := p.Reset()
	if err != nil {
		return err
	}

	plug, err := plugin.Open(path)
	if err != nil {
		return err
	}

	symPatch, err := plug.Lookup("Patch")
	if err != nil {
		return err
	}

	entry, ok := symPatch.(PatchInterface)
	if !ok {
		return fmt.Errorf("PatchTool.DoPatch(), plugin do not implement PatchInterface, path = %v", path)
	}

	patched, err := entry.Patch(path)
	if err != nil {
		return err
	}

	p.entry = entry
	p.patched = patched
	return nil
}

func (p *PatchTool) Reset() error {
	if p.entry != nil && p.patched != nil {
		err := p.entry.Reset(p.patched)
		if err != nil {
			return err
		}
		p.patched = nil
	}
	return nil
}
